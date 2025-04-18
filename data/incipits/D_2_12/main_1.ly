\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key c \major \time 4/4 \autoBeamOff \tempoMarkup "[no tempo]"
  r4^\partSs g'8 c h8. c16 d8 f,
  f e c' e a, h16[ c] d8 c
  h16[ a] g8 d' e c h16 a d8 c
}

text = \lyricmode {
  In te, Do -- mi -- ne, spe -- 
  ra -- vi, non con -- fun -- dar in ae -- 
  ter -- num, in iu -- sti -- ti -- a tu -- a
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
