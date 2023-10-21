;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

(setq user-full-name "Artyom Abramyan"
      user-mail-address "artemabramyan7@icloud.com")

(setq doom-theme 'doom-rose-pine-moon)

(setq doom-font (font-spec :family "Iosevka" :size 15)
      doom-variable-pitch-font (font-spec :family "Iosevka" :size 15)
      doom-unicode-font (font-spec :family "Iosevka" :size 15)
      doom-serif-font (font-spec :family "Iosevka" :size 15))

(setq display-line-numbers-type t)

(setq org-directory "~/Documents/Хранилище")
(setq org-agenda-files
      (directory-files-recursively "~/Documents/Хранилище/org" "\\.org$"))

(after! org
  (setq org-hide-emphasis-markers t)
  (setq org-pretty-entities t)
  (setq org-html-mathjax-template "<script>
  window.MathJax = {
    tex: {
      ams: {
        multlineWidth: '%MULTLINEWIDTH'
      },
      tags: '%TAGS',
      tagSide: '%TAGSIDE',
      tagIndent: '%TAGINDENT',
      macros: mathJaxMacros ?? {}
    },
    chtml: {
      scale: %SCALE,
      displayAlign: '%ALIGN',
      displayIndent: '%INDENT'
    },
    svg: {
      scale: %SCALE,
      displayAlign: '%ALIGN',
      displayIndent: '%INDENT'
    },
    output: {
      font: '%FONT',
      displayOverflow: '%OVERFLOW'
    }
  };
</script>

<script
  id=\"MathJax-script\"
  async
  src=\"%PATH\">
</script>"))

(use-package! org-modern)
(after! org-modern
  (add-hook 'org-mode-hook #'org-modern-mode)
  (add-hook 'org-agenda-finalize-hook #'org-modern-agenda))
