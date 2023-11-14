;; Previous Window
(defun prev-window ()
  (interactive)
  (other-window -1))

(global-set-key "\C-xO" 'prev-window)


;; Reload Config
(defun reload-config()
  (interactive)
  (load-file (expand-file-name "init.el" user-emacs-directory)))

(defun go-to-my-config-folder()
  (interactive)
  (dired (expand-file-name "" user-emacs-directory)))




(defalias 'my-config
  (let ((map (make-sparse-keymap)))
    (define-key map (kbd "f") #'go-to-my-config-folder)
    (define-key map (kbd "r") #'reload-config)
    map)
  "My config")

(global-set-key (kbd "C-c m") 'my-config)
