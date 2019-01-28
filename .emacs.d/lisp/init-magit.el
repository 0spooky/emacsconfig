;; init-magit.el : Initialise Magit for version control

(use-package magit
  :ensure t
  :config
  ;; Magit configuration:
  ;; Set commit log to show 16 older commits
  ;; Unless showing process, revision, diff, stash, or status, open new buffers in the same window.
  (setq magit-log-section-commit-count 16)
  (setq magit-display-buffer-function
	(lambda (buffer)
	  (display-buffer
	   buffer (if (and (derived-mode-p 'magit-mode)
			   (memq (with-current-buffer buffer major-mode)
				 '(magit-process-mode
				   magit-revision-mode
				   magit-diff-mode
				   magit-stash-mode
				   magit-status-mode)))
		      nil
		    '(display-buffer-same-window))))))

(provide 'init-magit)


