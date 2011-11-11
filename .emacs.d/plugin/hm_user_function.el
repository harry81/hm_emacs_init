;;; Line to top of window;  
;;; replace three keystroke sequence  C-u 0 C-l
(defun line-to-top-of-window ()
  "Move the line point is on to top of window."
  (interactive) 
  (recenter 0))

(global-set-key [f6] 'line-to-top-of-window)
