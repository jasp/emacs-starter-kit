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

;; slime
(eval-after-load "slime"
  '(progn (slime-setup '(slime-repl))))

(add-to-list 'load-path "~/.emacs.d/slime")
(require 'slime)
(slime-setup)

(server-start)
