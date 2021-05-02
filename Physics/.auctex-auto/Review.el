(TeX-add-style-hook
 "Review"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("article" "11pt")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("inputenc" "utf8") ("fontenc" "T1") ("ulem" "normalem")))
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "href")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (TeX-run-style-hooks
    "latex2e"
    "article"
    "art11"
    "inputenc"
    "fontenc"
    "graphicx"
    "grffile"
    "longtable"
    "wrapfig"
    "rotating"
    "ulem"
    "amsmath"
    "textcomp"
    "amssymb"
    "capt-of"
    "hyperref")
   (LaTeX-add-labels
    "sec:org7a8e614"
    "sec:orgbf2488c"
    "sec:org51c14a5"
    "sec:org90ac3e4"
    "sec:orgd488dfd"
    "sec:org396ff48"
    "sec:org1199ff5"
    "sec:orgfe450df"
    "sec:org79ccd0c"
    "sec:org99f4580"
    "sec:orgfb7fff2"
    "sec:org7907e4c"
    "sec:org40210a3"
    "sec:org5205031"
    "sec:org8e69145"
    "sec:org7bc4bf7"
    "sec:org26851be"
    "sec:org1b82133"
    "sec:orgbc4cb09"
    "sec:orgee64a3b"
    "sec:org5794f86"
    "sec:orgdab7561"
    "sec:org24f08d2"
    "sec:orgc94d761"
    "sec:org215e136"
    "sec:org90907f7"
    "sec:org4ebd0ef"
    "sec:org7ff4999"
    "sec:org319c62f"
    "sec:orgb5a4325"
    "sec:org693fc35"
    "sec:org255e28e"
    "sec:org1932310"
    "sec:org930f718"
    "sec:org64e473d"
    "sec:org451f506"))
 :latex)

