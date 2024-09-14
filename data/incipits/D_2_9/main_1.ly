\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key c \dorian \time 4/4 \tempoMarkup "Adagio"
  c16(^\partVi g') g( es) c( es) g( c) as2
  f16( b) b( f) b,( d) f( b) g2~
  g16 c, f e f4 \clef bass \autoBeamOff g,,4.^\partBc g8
  c4 c f,4. f8
  b4 b8 b es4. c8 %5
}

text = \lyricmode {
  \skips 14
  De pro -- %3
  fun -- dis, de pro --
  fun -- dis cla -- "ma -"
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
