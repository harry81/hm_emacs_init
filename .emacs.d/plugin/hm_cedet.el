
;; 현재(2009년 4월 12일) cvs 버전에서는 아래가 없어도 자동완성이 되었음
;; (require 'semantic-ia) 
;; (global-semanticdb-minor-mode 1)

;; 캐쉬 파일 만들어 두는 곳
;; 시스템 라이브러리는 같은 경우 거의 변경될 일이 없기 때문에
;; 한 번 캐쉬되면 다음 번 자동완성에서는 빠르게 사용 가능합니다.
;; 폴더 "~/.emacs.d/#semanticdb.cache#" 는 적당히 원하는 것으로 꼭 만들어 주어야 합니다.
(setq semanticdb-default-save-directory "~/.emacs.d/#semanticdb.cache#")


;;;; cedet 설정
;; http://cedet.sourceforge.net/ 에서 받을수 있다.
;; http://xtalk.msk.su/~ott/en/writings/emacs-devenv/EmacsCedet.html 참고

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


