
;; ����(2009�� 4�� 12��) cvs ���������� �Ʒ��� ��� �ڵ��ϼ��� �Ǿ���
;; (require 'semantic-ia) 
;; (global-semanticdb-minor-mode 1)

;; ĳ�� ���� ����� �δ� ��
;; �ý��� ���̺귯���� ���� ��� ���� ����� ���� ���� ������
;; �� �� ĳ���Ǹ� ���� �� �ڵ��ϼ������� ������ ��� �����մϴ�.
;; ���� "~/.emacs.d/#semanticdb.cache#" �� ������ ���ϴ� ������ �� ����� �־�� �մϴ�.
(setq semanticdb-default-save-directory "~/.emacs.d/#semanticdb.cache#")


;;;; cedet ����
;; http://cedet.sourceforge.net/ ���� ������ �ִ�.
;; http://xtalk.msk.su/~ott/en/writings/emacs-devenv/EmacsCedet.html ����

(let ((cedet-mode-path "/usr/share/emacs-snapshot/site-lisp/cedet-1.0/common"))
;(let ((cedet-mode-path "/usr/share/emacs-snapshot/site-lisp/cedet-common"))
  (when (file-accessible-directory-p cedet-mode-path)
    (load-file (format "%s/cedet.el" cedet-mode-path))    
    (global-ede-mode 1)
    (semantic-load-enable-code-helpers)
    (global-srecode-minor-mode 1)
    (require 'semantic-ia)
    (require 'semantic-gcc)
    (semantic-add-system-include "/home/hchoi/book/gingerbread:" 'c++-mode)
    (require 'semanticdb)      
    (global-semanticdb-minor-mode 1)
    (require 'semanticdb-global)
    (semanticdb-enable-gnu-global-databases 'c-mode)
    (semanticdb-enable-gnu-global-databases 'c++-mode)
    (semantic-load-enable-all-exuberent-ctags-support)      
    (global-semantic-tag-folding-mode 1)
    (ede-cpp-root-project "test1" :file "Makefile"
			  :include-path '( "/include" "../include" "/c/include" )
			  :system-include-path '( "/usr/include/c++/3.2.2/" )
			  :spp-table '( ("MOOSE" . "")
					("CONST" . "const") )
			  :spp-files '( "include/config.h" )
			  ) 
    )
  )

(defun my-cedet-hook ()
  (local-set-key [(control return)] 'semantic-ia-complete-symbol)
  (local-set-key "\C-c?" 'semantic-ia-complete-symbol-menu)
  (local-set-key "\C-c>" 'semantic-complete-analyze-inline)
  (local-set-key "\C-cp" 'semantic-analyze-proto-impl-toggle))
(add-hook 'c-mode-common-hook 'my-cedet-hook)


