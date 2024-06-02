\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key g \minor \time 4/4 \tempoMarkup "Adagio"
  g''16(^\partVi b) fis( a) g8 r r16 d es b c4~
  c16 c b( a) d( c) b( a) g8 g, \clef soprano \autoBeamOff d''4^\partSc
  d8 b r h c c r c
  a a r a b b r4
}

text = \lyricmode {
  \repeat unfold 13 { \skip 8 }
  Ve --
  ni -- te, ve -- ni -- te, ve --
  ni -- te, ve -- ni -- te
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
