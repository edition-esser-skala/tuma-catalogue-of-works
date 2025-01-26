\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key c \major \time 4/4 \autoBeamOff \tempoMarkup "Allegro"
  e'8.^\partSc e16 e4 c16[^\partSs g a h] c[ h c d]
  e[ h c d] e[ d e f] g[ e d c] f[ d c h]
  c[ e f g] f[ e] f d e8.^\partSc e16 e4
}

text = \lyricmode {
  Glo -- ri -- a, glo -- _
  _ _ _ _
  _ _ ri -- a, glo -- ri -- a
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
