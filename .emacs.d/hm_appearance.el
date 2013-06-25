;;hm_appearance

;기본 언어 설정 : 한글
(set-language-environment "Korean")

(setq default-frame-alist
      '((top . 0)
        (left . 0)
        (Width . 2000)
        (height . 1024)
        (cursor-color . "white")
        (cursor-type . box)
        (foreground-color . "light grey")
        (background-color . "black"))
)
(set-fontset-font "fontset-default" 'korean-ksc5601 "-microsoft-naver dictionary-medium-r-normal--12-0-0-0-p-0-ksc5601.1987-0")
(set-default-font "DejaVu Sans Mono-9")
