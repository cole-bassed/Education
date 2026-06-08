{
  description = "Education project tooling for Grade 6 assessment materials";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs =
    {
      self,
      nixpkgs,
      flake-utils,
    }:
    flake-utils.lib.eachDefaultSystem (
      system:
      let
        pkgs = import nixpkgs { inherit system; };

        projectRoot = "Grade6/end_of_year_exams";
        quizSources = "${projectRoot}/typst/quizzes";
        answerKeySources = "${projectRoot}/typst/answer_keys";
        quizOutput = "${projectRoot}/build/quizzes";
        answerKeyOutput = "${projectRoot}/build/answer_keys";

        compileQuizzes = pkgs.writeShellApplication {
          name = "qbuild";
          runtimeInputs = [ pkgs.typst ];
          text = ''
            set -euo pipefail

            root="$PWD"
            if [ ! -d "$root/${quizSources}" ]; then
              echo "error: run this command from the Education flake root" >&2
              echo "expected: $root/${quizSources}" >&2
              exit 1
            fi

            mkdir -p "$root/${quizOutput}" "$root/${answerKeyOutput}"

            for src in "$root/${quizSources}"/*.typ; do
              name="$(basename "$src" .typ)"
              typst compile --root "$root/${projectRoot}" "$src" "$root/${quizOutput}/$name.pdf"
              echo "built ${quizOutput}/$name.pdf"
            done

            for src in "$root/${answerKeySources}"/*.typ; do
              name="$(basename "$src" .typ)"
              typst compile --root "$root/${projectRoot}" "$src" "$root/${answerKeyOutput}/$name.pdf"
              echo "built ${answerKeyOutput}/$name.pdf"
            done
          '';
        };

        makeOpenQuiz =
          name: pdfs: description:
          pkgs.writeShellApplication {
            inherit name;
            runtimeInputs = [
              pkgs.zathura
              pkgs.poppler-utils
              pkgs.less
            ];
            text = ''
              set -euo pipefail

              root="$PWD"
              if [ ! -d "$root/${quizOutput}" ]; then
                echo "PDF build folder not found. Building quizzes first..."
                ${compileQuizzes}/bin/qbuild
              fi

              files=()
              ${pdfs}

              missing=0
              for pdf in "''${files[@]}"; do
                if [ ! -f "$pdf" ]; then
                  missing=1
                fi
              done

              if [ "$missing" -eq 1 ]; then
                echo "One or more PDFs were missing. Rebuilding quizzes..."
                ${compileQuizzes}/bin/qbuild
              fi

              if [ -n "''${DISPLAY:-}" ] || [ -n "''${WAYLAND_DISPLAY:-}" ]; then
                zathura "''${files[@]}"
              else
                {
                  for pdf in "''${files[@]}"; do
                    printf '\n===== %s =====\n\n' "$(basename "$pdf")"
                    pdftotext -layout "$pdf" -
                  done
                } | ''${PAGER:-less -R}
              fi
            '';
            meta.description = description;
          };

        openQuizPdfs = makeOpenQuiz "qopen" ''
          for pdf in "$root/${quizOutput}"/*.pdf; do
            files+=("$pdf")
          done
        '' "Open all Grade 6 quiz PDFs; falls back to terminal text when no display is available";

        openMathQuiz = makeOpenQuiz "qmath" ''
          files+=("$root/${quizOutput}/mathematics_20min_mcq_quiz.pdf")
        '' "Open/read the Mathematics quiz PDF";

        openLanguageArtsQuiz = makeOpenQuiz "qlang" ''
          files+=("$root/${quizOutput}/language_arts_20min_mcq_quiz.pdf")
        '' "Open/read the Language Arts quiz PDF";

        openScienceQuiz = makeOpenQuiz "qsci" ''
          files+=("$root/${quizOutput}/science_20min_mcq_quiz.pdf")
        '' "Open/read the Science quiz PDF";

        openSocialStudiesQuiz = makeOpenQuiz "qsoc" ''
          files+=("$root/${quizOutput}/social_studies_20min_mcq_quiz.pdf")
        '' "Open/read the Social Studies quiz PDF";

        quizPdfs = pkgs.stdenvNoCC.mkDerivation {
          pname = "grade6-end-of-year-quiz-pdfs";
          version = "0.1.0";
          src = ./.;
          nativeBuildInputs = [ pkgs.typst ];
          dontConfigure = true;
          dontBuild = true;
          installPhase = ''
            runHook preInstall

            mkdir -p "$out/quizzes" "$out/answer_keys"
            for src in ${quizSources}/*.typ; do
              name="$(basename "$src" .typ)"
              typst compile --root ${projectRoot} "$src" "$out/quizzes/$name.pdf"
            done
            for src in ${answerKeySources}/*.typ; do
              name="$(basename "$src" .typ)"
              typst compile --root ${projectRoot} "$src" "$out/answer_keys/$name.pdf"
            done

            runHook postInstall
          '';
        };
      in
      {
        packages = {
          default = quizPdfs;
          quiz-pdfs = quizPdfs;
          build-quizzes = compileQuizzes;
          open-quizzes = openQuizPdfs;
          open-math = openMathQuiz;
          open-language-arts = openLanguageArtsQuiz;
          open-science = openScienceQuiz;
          open-social-studies = openSocialStudiesQuiz;
        };

        apps = {
          default = {
            type = "app";
            program = "${compileQuizzes}/bin/qbuild";
            meta.description = "Compile Grade 6 quiz PDFs into the project build folder";
          };
          build-quizzes = {
            type = "app";
            program = "${compileQuizzes}/bin/qbuild";
            meta.description = "Compile Grade 6 quiz PDFs into the project build folder";
          };
          open-quizzes = {
            type = "app";
            program = "${openQuizPdfs}/bin/qopen";
            meta.description = "Open/read all Grade 6 quiz PDFs";
          };
          open-math = {
            type = "app";
            program = "${openMathQuiz}/bin/qmath";
            meta.description = "Open/read the Mathematics quiz PDF";
          };
          open-language-arts = {
            type = "app";
            program = "${openLanguageArtsQuiz}/bin/qlang";
            meta.description = "Open/read the Language Arts quiz PDF";
          };
          open-science = {
            type = "app";
            program = "${openScienceQuiz}/bin/qsci";
            meta.description = "Open/read the Science quiz PDF";
          };
          open-social-studies = {
            type = "app";
            program = "${openSocialStudiesQuiz}/bin/qsoc";
            meta.description = "Open/read the Social Studies quiz PDF";
          };
        };

        devShells.default = pkgs.mkShell {
          packages = with pkgs; [
            typst
            typstyle
            zathura
            poppler-utils
            less
            compileQuizzes
            openQuizPdfs
            openMathQuiz
            openLanguageArtsQuiz
            openScienceQuiz
            openSocialStudiesQuiz
          ];

          shellHook = ''
            echo "Education dev shell"
            echo "Shortcuts:"
            echo "  qbuild  # compile Grade 6 quiz PDFs and answer sheets"
            echo "  qopen   # open/read all compiled student quiz PDFs"
            echo "  qmath   # open/read Mathematics quiz"
            echo "  qlang   # open/read Language Arts quiz"
            echo "  qsci    # open/read Science quiz"
            echo "  qsoc    # open/read Social Studies quiz"
            echo "Note: shortcuts use Zathura when a display is available; otherwise they read PDFs in the terminal."
          '';
        };

        formatter = pkgs.nixfmt;
      }
    );
}
