\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key e \minor \time 4/4 \autoBeamOff \tempoMarkup "Allegro"
  r4^\partSc r8 fis g[ h16 a] g8 a
  h d16 d d8 cis16 cis d8 d4 d8
  c8[ d] e f h, c h8. h16
}

text = \lyricmode {
  Lau -- da -- _ mus
  te, be -- ne -- di -- ci -- mus te, ad -- o --
  ra -- mus, glo -- ri -- fi -- ca -- mus
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
