\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key c \dorian \time 4/4 \tempoMarkup "Adagio"
  c'4^\partVi g c,8 c c c
  c'4 as c,8 c c c \gotoBar "6"
  c'4 h\trill \clef soprano \autoBeamOff c^\partSc c
  c c c c
  c c c4. c8
}

text = \lyricmode {
  \repeat unfold 14 { \skip 8 }
  Di -- es
  i -- rae, di -- es
  i -- rae, di -- es
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
