\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key f \dorian \time 4/4 \tempoMarkup "Adagio"
  c'16^\partVi f, f8 r4 b16 e, e8 r g
  as16 b g as b c as b \gotoBar "4" \clef tenor \autoBeamOff c,4.^\partTs c8
  des2 c4. c8
}

text = \lyricmode {
  \skips 15
  Ma -- nus
  tu -- ae "fe -"
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
