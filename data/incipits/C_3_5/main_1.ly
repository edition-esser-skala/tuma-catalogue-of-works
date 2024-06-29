\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key g \major \time 4/4 \tempoMarkup "Adagio" \autoBeamOff
  d'8.^\partSs d16 d4 h8 h c d
  d g, r g cis4 d8 e
  fis,4 r8 d fis fis fis gis
}

text = \lyricmode {
  Do -- mi -- ne in vir -- tu -- te
  tu -- a lae -- ta -- bi -- tur
  rex, et su -- per sa -- "lu -"
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
