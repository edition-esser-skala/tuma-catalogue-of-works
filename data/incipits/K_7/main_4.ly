\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key d \minor \time 2/2 \tempoMarkup "Tempo moderato"
  \partial 4 d'4^\partVii cis a2 f'4
  e \set Staff.forceClef = ##t a,^\partVi a'2
  R1
  r4 a, a'2
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
