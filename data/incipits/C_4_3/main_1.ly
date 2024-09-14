\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key g \minor \time 3/4 \tempoMarkup "Andante"
  r8^\partVi \tuplet 3/2 8 { g''16 fis g } d8 \tuplet 3/2 8 { g16 fis g } b,8 \tuplet 3/2 8 { d16 c d }
  g,,4 r r
  R2.
  r8 \tuplet 3/2 8 { a''16 g a } d4 r
}

text = \lyricmode {

}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
