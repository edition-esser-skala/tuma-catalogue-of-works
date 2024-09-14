\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key c \dorian \time 3/4 \tempoMarkup "Adagio"
  g'4^\partVi c es~
  es d c
  h2 des4~
  des c b
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
