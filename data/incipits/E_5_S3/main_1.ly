\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef alto
  \key d \major \time 4/4 \tempoMarkup "[no tempo]" \autoBeamOff
  \partial 8 a'8^\partAs fis e16 d e8 d16[ cis] d8 \clef soprano fis^\partSs g fis16[ e]
  fis8 d'^\partSc e d16[ cis] d8 d4^\partSs d8
  d4. d8 cis cis h8. h16
}

text = \lyricmode {
  Sub tu -- um prae -- si -- di -- um con -- fu -- gi --
  mus, con -- fu -- gi -- mus, San -- cta,
  San -- cta De -- i Ge -- "ni -"
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
