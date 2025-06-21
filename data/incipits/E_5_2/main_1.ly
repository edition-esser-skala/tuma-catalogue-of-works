\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key d \major \time 4/2 \tempoMarkup "[no tempo]" \autoBeamOff
    \set Staff.timeSignatureFraction = 2/2
  a'1^\partSc h2 h4 h4
  a2 d d cis
  d e4 fis d2. d4
}

text = \lyricmode {
  Sub tu -- um prae -- 
  si -- di -- um con -- 
  fu -- gi -- mus, San -- cta
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
