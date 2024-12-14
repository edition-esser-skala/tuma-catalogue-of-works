\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key e \minor \time 3/2 \tempoMarkup "Largo"
  r4^\partVi h' g a h c
  h e g, a h c
  \clef soprano h1^\partSc h2
}

text = \lyricmode {
  \skips 11
  San -- ctus,
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
