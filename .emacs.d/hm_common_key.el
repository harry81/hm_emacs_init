(global-set-key (kbd "C-S-<tab>") 'tabbar-backward)
(global-set-key (kbd "C-<tab>") 'tabbar-forward)
(global-set-key "\C-x\C-b" 'buffer-menu)       ; CxCb puts point on buffer list

;;라인 바로가기 키 맵핑 (M-g)
(global-set-key "\M-g" 'goto-line)
(global-set-key "\M-r" 'replace-string)

(windmove-default-keybindings 'meta) ; 나뉘어진 윈도우를 Alt Key만 이용해서 이동가능

;; By an unknown contributor
;(global-set-key "%" 'match-paren)

(global-set-key "\C-cr" 'org-remember)
(global-set-key "\C-cw" 'select-current-word)
(global-set-key "\C-cl" 'select-current-line)
(global-set-key "\C-cg" 'grep-find)