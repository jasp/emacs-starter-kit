(defun toggle-fullscreen ()
  (interactive)
  (set-frame-parameter nil 'fullscreen (if (frame-parmeter nil 'fullscreen)
                                           nil
                                         'fullboth)))
(global-set-key (kbd "M-n") 'toggle-fullscreen)

(prefer-coding-system 'utf-8)

; clojure-mode
(add-to-list 'load-path "~/.emacs.d/clojure-mode")
(require 'clojure-mode)

; swank-clojure
(add-to-list 'load-path "~/.emacs.d/swank-clojure/src/emacs")

(setq swank-clojure-jar-path "~/.clojure/clojure.jar"
      swank-clojure-extra-classpaths (list
				      "~/.emacs.d/swank-clojure/src/main/clojure"
				      "~/.clojure/clojure-contrib.jar"))

(require 'swank-clojure-autoload)

; YASnippet
(add-to-list 'load-path "~/.emacs.d/bundles/yasnippet")
(require 'yasnippet)
(yas/initialize)
(yas/load-directory "~/.emacs.d/plugins/yasnippet/snippets")

; Cucumber mode
(add-to-list 'load-path "~/.emacs.d/bundles/cucumber")
(load "cucumber-mode")

;; load bundle snippets
(yas/load-directory "~/.emacs.d/bundles/cucumber/snippets")

(add-to-list 'auto-mode-alist '("\\.feature" . feature-mode))

; slime
(eval-after-load "slime"
  '(progn (slime-setup '(slime-repl))))

(add-to-list 'load-path "~/.emacs.d/slime")
(require 'slime)
(slime-setup)

;(server-start)
