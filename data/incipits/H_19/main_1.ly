\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key c \dorian \time 4/4 \tempoMarkup "Larghetto"
  r8 g''16^\partVi as g8 c, c4. c8~
  c h16 a h4 c8 c' h16 g b8 \gotoBar "5"
  \clef alto r2^\partAs g,4. g8
  \clef soprano as4.^\partSs as8 d,4. es16[ f]
}

text = \lyricmode {
  \skips 14
  Ky -- ri --
  Ky -- ri -- e "e -"
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
  \layout { \override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/8) }
}
