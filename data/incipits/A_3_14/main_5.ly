\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key g \major \time 4/4 \tempoMarkup "Andante"
  \tuplet 3/2 8 { g''16^\partVi a h } e,4. \tuplet 3/2 8 { a16 h c } e,4.
  \tuplet 3/2 8 { g16 a h } e,4. \tuplet 3/2 8 { fis16 g a } h,4 a'8 \gotoBar "7"
  \clef soprano \autoBeamOff h,2^\partSs c
  h4 e8 e e16[ dis fis e] dis[ c! h a]
}

text = \lyricmode {
  \repeat unfold 17 { \skip 8 }
  Be -- ne --
  di -- ctus, qui "ve -"
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
