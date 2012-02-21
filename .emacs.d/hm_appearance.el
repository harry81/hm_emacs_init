;;hm_appearance

(setq default-frame-alist
      '((top . 0)
        (left . 0)
        (Width . 2000)
        (height . 1024)
        (cursor-color . "white")
        (cursor-type . box)
        (foreground-color . "light grey")
        (background-color . "black"))
;      (font . "-outline-굴림체-normal-r-normal-normal-12-97-96-96-c-*-iso10646-1")
;        (font . "-*-Courier-normal-r-*-*-11-*-*-*-c-*-iso8859-1")
)
        ;(font . "fontset-mook")))
(set-face-font 'default (font-spec :family "terminus" :size 10.0)) 
(set-fontset-font "fontset-default" 'korean-ksc5601 "-microsoft-naver dictionary-medium-r-normal--12-0-0-0-p-0-ksc5601.1987-0")


;;-----------------------------------------------------------------------
; 기본 언어 설정 : 한글
(set-language-environment "Korean")

