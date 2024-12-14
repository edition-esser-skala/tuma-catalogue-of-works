\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef tenor
  \key e \minor \time 4/4 \autoBeamOff \tempoMarkup "[no tempo]"
  h8^\partTs g a h e, \clef soprano g'^\partSs g a
  h d16 d d8 cis16 cis d8 d16 d d4
  c8 d e f h,[ c] h8. h16
}

text = \lyricmode {
  Et in ter -- ra pax Lau -- da -- mus
  te, be -- ne -- di -- ci -- mus te, ad -- o -- ra --
  mus, glo -- ri -- fi -- ca -- _ mus
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
