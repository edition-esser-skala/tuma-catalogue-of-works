\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef tenor
  \key e \minor \time 3/2 \tempoMarkup "Andante" \autoBeamOff
  r2^\partTs r h
  c h e
  dis2. e4 fis2
  h, e2. e4
  dis1
}

text = \lyricmode {
  Sub tu -- um prae -- 
  si -- di -- um 
  con -- fu -- gi --
  mus,
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
