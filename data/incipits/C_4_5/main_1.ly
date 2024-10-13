\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key d \minor \time 2/2 \autoBeamOff \tempoMarkup "Allabreve / Moderato"
  d'2^\partSc d
  d cis4 cis
  d2. d4
  a2 c!
  h4 c8[ d] e4 d
  cis a h cis
}

text = \lyricmode {
  Be -- ne --
  dic -- tus es,
  Do -- mi --
  ne, do --
  _ ce me iu --
  sti -- fi -- ca -- "ti -"
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
