\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key a \minor \time 3/4 \tempoMarkup "Adagio"
  e'4^\partVi a, a'~
  a gis4. fis16 \hA gis
  a2 f4~
  f e8 d c h
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
