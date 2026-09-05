\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
    \key e \minor \time 4/4 \tempoMarkup "Andante"
    h''4.^\partVi a8 g16 e fis g fis h, a h
    g e' fis g fis h, a h \gotoBar "9" \clef alto \autoBeamOff h4.^\partAs a8
    g2 fis4 e
}

text = \lyricmode {
  \skips 18
  Be -- ne --
  di -- ctus, qui
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
