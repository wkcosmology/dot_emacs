;; stuff automatically added
;;



(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '(("melpa" . "https://melpa.org/packages/")
	       ("melpa" . "http://melpa.milkbox.net/packages/")
	       ("gnu" . "https://elpa.gnu.org/packages/")))
(add-to-list 'load-path "~/.emacs.d/external/")
(package-initialize)

;; Bootstrap `use-package'
(unless (package-installed-p 'use-package)
	(package-refresh-contents)
	(package-install 'use-package))


(org-babel-load-file (expand-file-name "~/.emacs.d/myinit.org"))


