\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef alto
  \key d \major \time 4/4 \autoBeamOff \tempoMarkup "Recitativo"
  r4^\partAs d g g
  g8. g16 a8 h fis fis fis g
  a a c h g g r g16 g
}

text = \lyricmode {
  San -- cto -- rum
  Mar -- ty -- rum tri -- um -- phos et tro --
  phe -- a re -- co -- la -- mus qui "con -"
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
