\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key g \minor \time 4/4 \tempoMarkup "Adagio"
  d'8^\partVi es16 d b'8 g16 es c2
  c8 d16 c a'8 fis16 c h2
  g'4 fis\trill \clef tenor \autoBeamOff d,4.^\partTs es8
  c4 c c8. c16 b8 a
}

text = \lyricmode {
  \skips 16
  Par -- ce
  mi -- hi, par -- ce mi -- hi
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
