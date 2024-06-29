\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef alto
  \key d \major \time 4/4 \tempoMarkup "Larghetto"
  \partial 8 a8^\partVla d16 fis e16.\trill d32 a'16 cis h16.\trill a32 d8 d, r16 a' g32([ fis) e-! d]-!
  r16 h' a32([ g) fis-! e]-! r16 e cis32([ h) a-! g]-! \gotoBar "9"
    \autoBeamOff r8^\partAs a' \grace g16 fis8 e16[ d]
    h'[ cis] d[ a] g8.\trill g16 fis4 r
}

text = \lyricmode {
  \repeat unfold 23 { \skip8 }
  Per la -- bra
  ne -- ctar bi -- bi -- tur,
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
  \layout { \override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/16) }
}
