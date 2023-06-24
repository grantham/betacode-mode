;;
;; This file is part of betacode-mode.
;;
;; betacode-mode is free software: you can redistribute it and/or
;; modify it under the terms of the GNU General Public License as
;; published by the Free Software Foundation, either version 3 of
;; the License, or (at your option) any later version.
;;
;; betacode-mode is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
;; General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with betacode-mode. If not, see
;; <https://www.gnu.org/licenses/>.
;;
;;
;; betacode-mode

(defun enable-betacode-im ()
  (interactive)
  (set-input-method 'betacode-im)
  (message "betacode input method enabled"))

(defun disable-betacode-im ()
  (interactive)
  (toggle-input-method)
  (set-input-method 'default-input-method)
  (message "betacode input method disabled"))


(define-minor-mode betacode-mode
  "toggles betacode-to-unicode input for polytonic greek"
  :init-value nil
  :global nil
  :lighter " betacode"
  :keymap
  (list (cons (kbd "C-b C-h")
	      (lambda ()
		(interactive)
		(message (mapconcat 'identity
			  '("C-b C-h: print this help message"
			    "C-b C-d: disable the betacode input method"
			    "C-b C-e: enable the betacode input method"
			    "C-b C-a: alphabet - list the betacode alphabet"
			    "C-b C-s: syntax for betacode"
			    "C-b C-m: marks - list of betacodes for diacritical marks")
			  "\n"))))
	(cons (kbd "C-b C-d")
	      'disable-betacode-im)
	(cons (kbd "C-b C-e")
	      'enable-betacode-im)
	(cons (kbd "C-b C-a")
	      (lambda ()
		(interactive)
		(message
		 (concat
		  "betacode: a b g d e z h q i k l m n c o p r s s t u f x y w *A *B *G ...\n"
                  "greek:    α β γ δ ε ζ η θ ι κ λ μ ν ξ ο π ρ σ ς τ υ φ χ ψ ω  Α  Β  Γ ...\n"))))
	(cons (kbd "C-b C-s")
	      (lambda ()
		(interactive)
		(message (concat "[capital]letter[breathing][   accent      ][subscript]\n"
				 "     *      a      ) (      \\ / = + <3 -      |\n"
				 "\n"
				 "          Μῆνιν ἄειδε θεὰ Πηληΐδεω Ἀχιλῆος\n"
				 "       mh=nin a)/eide qea\\ *Phlhi+/dew *A)xhilh=os\n"))))
	(cons (kbd "C-b C-m")
	      (lambda ()
		(interactive)
		(message (concat
			  "BETACODE \n"
			  "         _BREATHING_\n"
			  "  )      psili - smooth breathing\n"
			  "  (      dasia - rough breathing \n"
			  "\n"
			  "         _ACCENT_\n"
			  "  \\     varia - grave accent\n"
			  "  /      oxia - accute accent, tonos\n"
			  "  =      perispomeni - circumflex accent\n"
			  "  +      dialytika diaresis; must precede an accent\n"
			  "  <3     vrachy - short stress (breve)\n"
			  "  -      macron\n"
			  "\n"
			  "         _IOTA SUBSCRIPT / ADSCRIPT_\n"
			  "  |      ypogegrammeni  iota subscript\n"
			  "  |      prosgegrammeni iota subscript (adscript for capitals)\n"))))
	)  
  (if betacode-mode
      (progn (enable-betacode-im)
	     (message "betacode-mode activated"))
    (progn (disable-betacode-im)
	   (message "betacode-mode deactivated"))))



(add-hook 'betacode-mode-hook (lambda () (message "hook executed")))
(add-hook 'betacode-mode-on-hook (lambda () (message "betacode mode enabled")))
(add-hook 'betacode-mode-off-hook (lambda ()
				    (disable-betacode-im)
				    (message "betacode mode disabled")))

