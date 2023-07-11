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
;; Betacode input method
;;
;; M-x set-input-method RET betacode RET
;;
;; see also
;; - https://en.wikipedia.org/wiki/Beta_Code
;; - https://en.wikipedia.org/wiki/Greek_Extended
;; - https://www.unicode.org/charts/PDF/U1F00.pdf
;;

(require 'quail)

(quail-define-package
 "betacode-im"
 "grc" 
 "bc-im"
 t
 "betacode input method for polytonic Greek.

SYNTAX

betacode: a b g d e z h q i k l m n c o p r s s t u f x y w *A *B *G ...
greek:    α β γ δ ε ζ η θ ι κ λ μ ν ξ ο π ρ σ ς τ υ φ χ ψ ω  Α  Β  Γ ...

COMBINING MARKS

[capital]letter[breathing][   accent      ][subscript]
     *      a      ) (      \\ / = + <3 -      |

E.g.
          Μῆνιν ἄειδε θεὰ Πηληΐδεω Ἀχιλῆος
       *mh=nin a)/eide qea\\ *Phlhi+/dew *A)xhilh=os

BETACODE MARK
         _BREATHING_
  )      psili - smooth breathing
  (      dasia - rough breathing 

         _ACCENT_
  \\     varia - grave accent
  /      oxia - accute accent, tonos
  =      perispomeni - circumflex accent
  +      dialytika diaresis
  <3     vrachy - short stress (breve)
  -      macron

         _IOTA SUBSCRIPT / ADSCRIPT_
  |      ypogegrammeni  iota subscript
  |      prosgegrammeni iota subscript (adscript for capitals) 
"
 nil t nil nil t t nil nil nil nil t)


(quail-define-rules 
 ;;
 ;; α Α
 ;;

 ("a" #x03B1)  ; α
 ("a)" #x1F00) ; ἀ
 ("a(" #x1F01) ; ἁ
 ("a)\\" #x1F02) ; ἂ
 ("a(\\" #x1F03) ; ἃ
 ("a)/" #x1F04) ; ἄ
 ("a(/" #x1F05) ; ἅ
 ("a)=" #x1F06) ; ἆ
 ("a(=" #x1F07) ; ἇ
 ("a\\" #x1F70) ; ὰ
 ("a/" #x1F71) ; ά
 ("a)|" #x1F80) ; ᾀ
 ("a(|" #x1F81) ; ᾁ
 ("a)\\|" #x1F82) ; ᾂ
 ("a(\\|" #x1F83) ; ᾃ
 ("a)/|" #x1F84) ; ᾄ
 ("a(/|" #x1F85) ; ᾅ
 ("a)=|" #x1F86) ; ᾆ
 ("a(=|" #x1F87) ; ᾇ
 ("a<3" #x1FB0) ; ᾰ
 ("a-" #x1FB1) ; ᾱ
 ("a\\|" #x1FB2) ; ᾲ
 ("a|" #x1FB3) ; ᾳ
 ("a/|" #x1FB4) ; ᾴ
 ("a=" #x1FB6) ; ᾶ
 ("a=|" #x1FB7) ; ᾷ

 ("*A" #x0391) ; Α
 ("*A)" #x1F08) ; Ἀ
 ("*A(" #x1F09) ; Ἁ
 ("*A)\\" #x1F0A) ; Ἂ
 ("*A(\\" #x1F0B) ; Ἃ
 ("*A)/" #x1F0C) ; Ἄ
 ("*A(/" #x1F0D) ; Ἅ
 ("*A)=" #x1F0E) ; Ἆ
 ("*A(=" #x1F0F) ; Ἇ
 ("*A)|" #x1F88) ; ᾈ
 ("*A(|" #x1F89) ; ᾉ
 ("*A)\\|" #x1F8A) ; ᾊ
 ("*A(\\|" #x1F8B) ; ᾋ
 ("*A)/|" #x1F8C) ; ᾌ
 ("*A(/|" #x1F8D) ; ᾍ
 ("*A)=|" #x1F8E) ; ᾎ
 ("*A(=|" #x1F8F) ; ᾏ
 ("*A<3" #x1FB8) ; Ᾰ
 ("*A-" #x1FB9) ; Ᾱ
 ("*A\\" #x1FBA) ; Ὰ
 ("*A/" #x1FBB) ; Ά
 ("*A|" #x1FBC) ; ᾼ

 ;;
 ;; β Β
 ;;

 ("b" #x03B2) ; β

 ("*B" #x0392) ; Β 

 ;;
 ;;  γ Γ
 ;;

 ("g" #x03B3) ; γ

 ("*G" #x0393) ; Γ

 ;;
 ;;  δ Δ
 ;;

 ("d" #x03B4)  ; δ

 ("*D" #x0394) ; Δ 


 ;;
 ;;  ε Ε
 ;;

 ("e" #x03B5) ; ε 
 ("e)" #x1F10) ; ἐ
 ("e(" #x1F11) ; ἑ
 ("e)\\" #x1F12) ; ἒ
 ("e(\\" #x1F13) ; ἓ
 ("e)/" #x1F14) ; ἔ
 ("e(/" #x1F15) ; ἕ
 ("e\\" #x1F72) ; ὲ
 ("e/" #x1F73) ; έ

 ("*E" #x0395) ; Ε
 ("*E)" #x1F18) ; Ἐ
 ("*E(" #x1F19) ; Ἑ
 ("*E)\\" #x1F1A) ; Ἒ
 ("*E(\\" #x1F1B) ; Ἓ
 ("*E)/" #x1F1C) ; Ἔ
 ("*E(/" #x1F1D) ; Ἕ
 ("*E\\" #x1FC8) ; Ὲ
 ("*E/" #x1FC9) ; Έ


 ;;
 ;;  ζ Ζ
 ;;

 ("z" #x03B6) ; ζ 

 ("*Z" #x0396) ; Ζ 

 ;;
 ;;  η Η
 ;;

 ("h" #x03B7) ; η
 ("h)" #x1F20) ; ἠ
 ("h(" #x1F21) ; ἡ
 ("h)\\" #x1F22) ; ἢ
 ("h(\\" #x1F23) ; ἣ
 ("h)/" #x1F24) ; ἤ
 ("h(/" #x1F25) ; ἥ
 ("h)=" #x1F26) ; ἦ
 ("h(=" #x1F27) ; ἧ
 ("h\\" #x1F74) ; ὴ
 ("h/" #x1F75) ; ή
 ("h)|" #x1F90) ; ᾐ
 ("h(|" #x1F91) ; ᾑ
 ("h)\\|" #x1F92) ; ᾒ
 ("h(\\|" #x1F93) ; ᾓ
 ("h)/|" #x1F94) ; ᾔ
 ("h(/|" #x1F95) ; ᾕ
 ("h)=|" #x1F96) ; ᾖ
 ("h(=|" #x1F97) ; ᾗ
 ("h\\|" #x1FC2) ; ῂ
 ("h|" #x1FC3) ; ῃ
 ("h/|" #x1FC4) ; ῄ
 ("h=" #x1FC6) ; ῆ
 ("h=|" #x1FC7) ; ῇ

 ("*H" #x0397) ; Η 
 ("*H)" #x1F28) ; Ἠ
 ("*H(" #x1F29) ; Ἡ
 ("*H)\\" #x1F2A) ; Ἢ
 ("*H(\\" #x1F2B) ; Ἣ
 ("*H)/" #x1F2C) ; Ἤ
 ("*H(/" #x1F2D) ; Ἥ
 ("*H)=" #x1F2E) ; Ἦ
 ("*H(=" #x1F2F) ; Ἧ
 ("*H)|" #x1F98) ; ᾘ
 ("*H(|" #x1F99) ; ᾙ
 ("*H)\\|" #x1F9A) ; ᾚ
 ("*H(\\|" #x1F9B) ; ᾛ
 ("*H)/|" #x1F9C) ; ᾜ
 ("*H(/|" #x1F9D) ; ᾝ
 ("*H)=|" #x1F9E) ; ᾞ
 ("*H(=|" #x1F9F) ; ᾟ
 ("*H\\" #x1FCA) ; Ὴ
 ("*H/" #x1FCB) ; Ή
 ("*H|" #x1FCC) ; ῌ

 ;;
 ;;  θ Θ
 ;;

 ("q" #x03B8) ; θ 

 ("*Q" #x0398) ; Θ 

 ;;
 ;;  ι Ι
 ;;

 ("i" #x03B9) ; ι 
 ("i)" #x1F30) ; ἰ
 ("i(" #x1F31) ; ἱ
 ("i)\\" #x1F32) ; ἲ
 ("i(\\" #x1F33) ; ἳ
 ("i)/" #x1F34) ; ἴ
 ("i(/" #x1F35) ; ἵ
 ("i)=" #x1F36) ; ἶ
 ("i(=" #x1F37) ; ἷ
 ("i\\" #x1F76) ; ὶ
 ("i/" #x1F77) ; ί
 ("i<3" #x1FD0) ; ῐ
 ("i-" #x1FD1) ; ῑ
 ("i+\\" #x1FD2) ; ῒ
 ("i+/" #x1FD3) ; ΐ
 ("i=" #x1FD6) ; ῖ
 ("i+=" #x1FD7) ; ῗ

 ("*I" #x0399) ; Ι
 ("*I)" #x1F38) ; Ἰ
 ("*I(" #x1F39) ; Ἱ
 ("*I)\\" #x1F3A) ; Ἲ
 ("*I(\\" #x1F3B) ; Ἳ
 ("*I)/" #x1F3C) ; Ἴ
 ("*I(/" #x1F3D) ; Ἵ
 ("*I)=" #x1F3E) ; Ἶ
 ("*I(=" #x1F3F) ; Ἷ
 ("*I<3" #x1FD8) ; Ῐ
 ("*I-" #x1FD9) ; Ῑ
 ("*I\\" #x1FDA) ; Ὶ
 ("*I/" #x1FDB) ; Ί

 ;;
 ;;  κ Κ
 ;;

 ("k" #x03BA) ; κ 

 ("*K" #x039A) ; Κ 

 ;;
 ;;  λ Λ
 ;;

 ("l" #x03BB) ; λ 

 ("*L" #x039B) ; Λ 

 ;;
 ;;  μ Μ
 ;;

 ("m" #x03BC) ; μ 

 ("*M" #x039C) ; Μ 

 ;;
 ;;  ν Ν
 ;;

 ("n" #x03BD) ; ν 

 ("*N" #x039D) ; Ν 

 ;;
 ;;  ξ Ξ
 ;;

 ("c" #x03BE) ; ξ 

 ("*C" #x039E) ; Ξ 

 ;;
 ;;  ο Ο
 ;;

 ("o" #x03BF) ; ο 
 ("o)" #x1F40) ; ὀ
 ("o(" #x1F41) ; ὁ
 ("o)\\" #x1F42) ; ὂ
 ("o(\\" #x1F43) ; ὃ
 ("o)/" #x1F44) ; ὄ
 ("o(/" #x1F45) ; ὅ
 ("o\\" #x1F78) ; ὸ
 ("o/" #x1F79) ; ό

 ("*O" #x039F) ; Ο 
 ("*O)" #x1F48) ; Ὀ
 ("*O(" #x1F49) ; Ὁ
 ("*O)\\" #x1F4A) ; Ὂ
 ("*O(\\" #x1F4B) ; Ὃ
 ("*O)/" #x1F4C) ; Ὄ
 ("*O(/" #x1F4D) ; Ὅ
 ("*O\\" #x1FF8) ; Ὸ
 ("*O/" #x1FF9) ; Ό


 ;;
 ;;  π Π 
 ;;

 ("p" #x03C0) ; π 

 ("*P" #x03A0) ; Π 

 ;;
 ;;  ρ Ρ
 ;;

 ("r" #x03C1) ; ρ 
 ("r)" #x1FE4) ; ῤ
 ("r(" #x1FE5) ; ῥ

 ("*R" #x03A1) ; Ρ 
 ("*R(" #x1FEC) ; Ῥ

 ;;
 ;;  σ ς Σ
 ;;

 ("s" #x03C3) ; σ 
 ("s " #x03C2) ; ς 

 ("*S" #x03A3) ; Σ 

 ;;
 ;;  τ Τ
 ;;

 ("t" #x03C4) ; τ 

 ("*T" #x03A4) ; Τ 

 ;;
 ;;  υ Υ
 ;;

 ("u" #x03C5) ; υ 
 ("u)" #x1F50) ; ὐ
 ("u(" #x1F51) ; ὑ
 ("u)\\" #x1F52) ; ὒ
 ("u(\\" #x1F53) ; ὓ
 ("u)/" #x1F54) ; ὔ
 ("u(/" #x1F55) ; ὕ
 ("u)=" #x1F56) ; ὖ
 ("u(=" #x1F57) ; ὗ
 ("u\\" #x1F7A) ; ὺ
 ("u/" #x1F7B) ; ύ
 ("u<3" #x1FE0) ; ῠ
 ("u-" #x1FE1) ; ῡ
 ("u+\\" #x1FE2) ; ῢ
 ("u+/" #x1FE3) ; ΰ
 ("u=" #x1FE6) ; ῦ
 ("u+=" #x1FE7) ; ῧ

 ("*U" #x03A5) ; Υ 
 ("*U(" #x1F59) ; Ὑ
 ("*U(\\" #x1F5B) ; Ὓ
 ("*U(/" #x1F5D) ; Ὕ
 ("*U(=" #x1F5F) ; Ὗ
 ("*U<3" #x1FE8) ; Ῠ
 ("*U-" #x1FE9) ; Ῡ
 ("*U\\" #x1FEA) ; Ὺ
 ("*U/" #x1FEB) ; Ύ


 ;;
 ;;  φ Φ
 ;;

 ("f" #x03C6) ; φ 

 ("*F" #x03A6) ; Φ 

 ;;
 ;;  χ Χ
 ;;

 ("x" #x03C7) ; χ 

 ("*X" #x03A7) ; Χ 

 ;;
 ;;  ψ Ψ
 ;;

 ("y" #x03C8) ; ψ 

 ("*Y" #x03A8) ; Ψ 

 ;;
 ;;  ω Ω
 ;;

 ("w" #x03C9) ; ω 
 ("w)" #x1F60) ; ὠ
 ("w(" #x1F61) ; ὡ
 ("w)\\" #x1F62) ; ὢ
 ("w(\\" #x1F63) ; ὣ
 ("w)/" #x1F64) ; ὤ
 ("w(/" #x1F65) ; ὥ
 ("w)=" #x1F66) ; ὦ
 ("w(=" #x1F67) ; ὧ
 ("w\\" #x1F7C) ; ὼ
 ("w/" #x1F7D) ; ώ
 ("w)|" #x1FA0) ; ᾠ
 ("w(|" #x1FA1) ; ᾡ
 ("w)\\|" #x1FA2) ; ᾢ
 ("w(\\|" #x1FA3) ; ᾣ
 ("w)/|" #x1FA4) ; ᾤ
 ("w(/|" #x1FA5) ; ᾥ
 ("w)=|" #x1FA6) ; ᾦ
 ("w(=|" #x1FA7) ; ᾧ
 ("w\\|" #x1FF2) ; ῲ
 ("w|" #x1FF3) ; ῳ
 ("w/|" #x1FF4) ; ῴ
 ("w=" #x1FF6) ; ῶ
 ("w=|" #x1FF7) ; ῷ

 ("*W" #x03A9) ; Ω 
 ("*W)" #x1F68) ; Ὠ
 ("*W(" #x1F69) ; Ὡ
 ("*W)\\" #x1F6A) ; Ὢ
 ("*W(\\" #x1F6B) ; Ὣ
 ("*W)/" #x1F6C) ; Ὤ
 ("*W(/" #x1F6D) ; Ὥ
 ("*W)=" #x1F6E) ; Ὦ
 ("*W(=" #x1F6F) ; Ὧ

 ("*W)|" #x1FA8) ; ᾨ
 ("*W(|" #x1FA9) ; ᾩ
 ("*W)\\|" #x1FAA) ; ᾪ
 ("*W(\\|" #x1FAB) ; ᾫ
 ("*W)/|" #x1FAC) ; ᾬ
 ("*W(/|" #x1FAD) ; ᾭ
 ("*W)=|" #x1FAE) ; ᾮ
 ("*W(=|" #x1FAF) ; ᾯ
 ("*W\\" #x1FFA) ; Ὼ
 ("*W/" #x1FFB) ; Ώ
 ("*W|" #x1FFC) ; ῼ
 )

