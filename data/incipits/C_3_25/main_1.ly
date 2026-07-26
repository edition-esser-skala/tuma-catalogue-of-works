\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key c \major \time 4/4 \autoBeamOff \tempoMarkup "Recitativo"
  c'8^\partSs c d e h8. h16 h4
  r8 h h c16 d d8 g,16 g f8. g16
  e4 r r8 e' c a
}

text = \lyricmode {
  In co -- lom -- bae spe -- ci -- e
  Scho -- la -- sti -- cae a -- ni -- ma vi -- sa
  est, fra -- ter -- na
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
