\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef alto
  \key g \major \time 4/4 \autoBeamOff \tempoMarkup "Recitativo"
  d8.^\partAs d16 d4 g8. g16 a8 h
  fis8. fis16 fis4 r8 a a d,16 d
  c4 d8 a h h r g'
}

text = \lyricmode {
  Bo -- num est con -- fi -- te -- ri
  Do -- mi -- no et psal -- le -- re
  no -- mi -- ni tu -- o, "Al -"
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
