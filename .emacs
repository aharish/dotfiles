(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(display-line-numbers t)
 '(org-agenda-files '("~/org/Tasks.org"))
 '(org-refile-use-outline-path 'file)
 '(package-selected-packages
   '(pandoc-mode magit web-mode emmet-mode php-mode markdown-mode base16-theme)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(load-theme 'base16-phd t)

(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
(require 'org-install)
(require 'org-capture)
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)
(global-set-key (kbd "<f6>") 'org-capture)

(setq indent-tabs-mode 2) ; Convert tabs to spaces
(setq tab-width 2) ; or any other preferred value
(defvaralias 'c-basic-offset 'tab-width)
(defvaralias 'cperl-indent-level 'tab-width)
(setq css-indent-offset 2)
(setq js-indent-level 2)

(defun my-web-mode-hook ()
  "Hooks for Web mode."
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-css-indent-offset 2)
  (setq web-mode-code-indent-offset 2)
)
(add-hook 'web-mode-hook  'my-web-mode-hook)

(global-set-key (kbd "C-x g") 'magit-status)

(setq backup-directory-alist
          `(("." . ,(concat user-emacs-directory "backups"))))


;; For Org refile targets
(setq org-refile-targets (quote (("Design Infuse.org" :maxlevel . 1)
                                 ("Tasks.org" :level . 1))))
