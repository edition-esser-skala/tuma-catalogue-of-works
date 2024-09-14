\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key e \minor \time 4/4
  e'8^\partVi e e16 h' g a32 h c,8 c c16 c' a h32 c
  h,8 h h16 a' fis g32 a \clef soprano \autoBeamOff e8. e16 e8 r
  e8. e16 c8 r c4 c8 c
  h g d'4. c16[ h] e8[ d]
}

text = \lyricmode {
  \skips 21
  Ky -- ri -- e,
  Ky -- ri -- e e -- le -- i --
  son, e -- lei -- _ \hy
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
  \layout { \override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/8) }
}
