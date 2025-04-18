\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key a \minor \time 4/4 \tempoMarkup "Allegro"
  r8 e'^\partVi a e e16 d c f e d c h \gotoBar "11"
  \clef tenor \autoBeamOff r2^\partTs r8 a, c h16 a
  e'[ d c f] e[ d c h] c[ h a f'] e[ d c h]
  c[ h] a8
}

text = \lyricmode {
  \skips 11
  Lau -- da -- te, lau --
  da -- _ _ _
  _ te
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
