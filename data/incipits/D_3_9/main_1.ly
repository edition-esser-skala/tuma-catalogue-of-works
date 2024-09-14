\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key f \dorian \time 4/4 \tempoMarkup "Adagio"
  c'8^\partVi c c c des4 r
  c8 c c c a4 r \gotoBar "8"
  \clef soprano \autoBeamOff as4.^\partSc as8 b4 b
  r b8 b as4 as
  r a8 a b4 b
}

text = \lyricmode {
  \skips 10
  Mi -- se -- re -- re
  me -- i, De -- us,
  me -- i, De -- us,
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
