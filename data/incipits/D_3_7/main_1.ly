\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key f \dorian \time 3/2 \tempoMarkup "Adagio"
  c2 c'4( as) e( f)
  b2 des4( b) e,( des')
  c2 c4( a) f( es'!) \gotoBar "9"
  \clef soprano as,1^\partSc as2
  b1 b2
}

text = \lyricmode {
  \skips 9
  Mi -- se --
  re -- re,
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
