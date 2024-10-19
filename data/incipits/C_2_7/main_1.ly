\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef alto
  \key c \dorian \time 4/4 \tempoMarkup "Larghetto"
  g'8^\partTrbi es16 d c8 as' g es16 d c8 as'
  g16 g f es f f es d es4 \gotoBar "7"
    \set Staff.forceClef = ##t \clef alto \autoBeamOff g^\partAc
  as2~ as8 d, g f
  e8. e16 f8 f f4 es?
}

text = \lyricmode {
  \skips 19
  Pla -- %7
  ca -- re, Chri -- ste,
  ser -- vu -- lis, pla -- ca -- re
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
