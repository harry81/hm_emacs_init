(global-set-key (kbd "C-S-<tab>") 'tabbar-backward)
(global-set-key (kbd "C-<tab>") 'tabbar-forward)
(global-set-key "\C-x\C-b" 'buffer-menu)       ; CxCb puts point on buffer list

;;���� �ٷΰ��� Ű ���� (M-g)
(global-set-key "\M-g" 'goto-line)
(global-set-key "\M-r" 'replace-string)
(global-set-key "\M-r" 'replace-string)

(windmove-default-keybindings 'meta) ; �������� �����츦 Alt Key�� �̿��ؼ� �̵�����

;; By an unknown contributor
;(global-set-key "%" 'match-paren)

(global-set-key "\C-cr" 'org-remember)
(global-set-key "\C-cw" 'select-current-word)
(global-set-key "\C-cl" 'select-current-line)
