\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key g \minor \time 4/4 \tempoMarkup "Adagio ô grave"
  g'8([^\partVi d)] b'( g) es'2
  d8([ g,)] h( d) as'2 \gotoBar "5"
  b,4 a\trill \clef soprano g8([^\partSc d)] b'([ g)]
  es'4 es r2
  r8 c4 c8 h4 h
}

text = \lyricmode {
  \skips 8
  Mi -- se -- %5
  re -- re,
  mi -- se -- re -- re,
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
