\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key h \minor \time 4/4 \tempoMarkup "Adagio" 
  fis'8^\partVi fis fis16 h ais h e,2
  e8 e e16 cis' h cis dis,2 
  e8 fis fis g g16 fis e dis e d cis h
  ais8 fis s2. \gotoBar "6"
  \clef soprano \autoBeamOff d'4.^\partSc d8 cis2
  cis dis
  e4 fis g e8[ d]
  cis4 d8 d h2
  ais r
}

text = \lyricmode {
  \skips 28
  "[Ky" -- ri -- "e]"
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
