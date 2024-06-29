\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key c \dorian \time 4/4 \tempoMarkup "Adagio"
  g'8\p^\partVi as16( g) as( g) as( g) c2~
  c4 des16( c) des( c) h4. b8 \gotoBar "5"
  \clef alto \autoBeamOff g2^\partAs \clef soprano c4.^\partSs c8
  h4 c c h
  c8 g es'16([ d) es( d)] c2
}

text = \lyricmode {
  \repeat unfold 9 { \skip 8 }
  "Re -" Re -- qui --
  em ae -- ter -- _
  nam, ae -- "ter -"
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
