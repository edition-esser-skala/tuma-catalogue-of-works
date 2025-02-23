\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key a \minor \time 4/4 \tempoMarkup "Allegro"
  a'4^\partVi a,8 a' g f e d
  c e' e8. f,16 e8 d c h \gotoBar "5"
  f'' d h4\trill \clef soprano \autoBeamOff a8.^\partSc a16 a8 a
  h2 c4 r8 a
}

text = \lyricmode {
  \skips 18
  Ky -- ri -- e e --
  lei -- son, "e -"
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
  \layout { \override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/8) }
}
