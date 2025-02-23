\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key e \minor \time 4/4 \tempoMarkup "Andante"
    e'8 h4 g'8 fis h,4 a'8
    g h,4 h'8 c a4 gis8
    a a,~ a16 a' h c h8 g4 fis8 \gotoBar "8"
    e4 r r2
    R1*2
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key e \minor \time 4/4 \tempoMarkup "Andante"
    r4 h''16( a) h8 r4 h16( a) h8
    r4 h16 a h8 r2
    r8 a16( gis) a8 r r2 \gotoBar "8"
    e4 r r2
    R1*2
  }
}

Alto = {
  \relative c' {
    \clef alto
    \key e \minor \time 4/4 \tempoMarkup "Andante" \autoBeamOff
    R1*3 \gotoBar "8"
    e8.^\solo h16 h8 g' fis h,4 a'8
    g h,4 h'8 c16[ h] a4 gis8
    a e4 a8 h16[ a] g4 fis8
  }
}

AltoLyrics = \lyricmode {
  Ky -- ri -- e e -- lei -- son, e --
  lei -- son, e -- lei -- _ _
  _ son, e -- lei -- _ \hy
}

Organo = {
  \relative c {
    \clef bass
    \key e \minor \time 4/4 \tempoMarkup "Andante"
    e8-\solo fis g e dis cis \hA dis h
    e fis g gis a c! d! e
    a, g fis d g! h c d \gotoBar "8"
    e, fis g e dis cis \hA dis h
    e fis g e a c, d e
    a, h c a g! h c d
  }
}

BassFigures = \figuremode {
  r1
  r2. <_!>8 <_+>
  r4 <6>2.
  r1
  r2 r8 <6> <_!> <_+>
  r2.. <_+>8
}

\score {
  <<
    \new StaffGroup <<
      \new GrandStaff <<
        \set GrandStaff.instrumentName = "vl"
        \new Staff {
          \set Staff.instrumentName = "1"
          \ViolinoI
        }
        \new Staff {
          \set Staff.instrumentName = "2"
          \ViolinoII
        }
      >>
    >>
    \new ChoirStaff <<
      \new Staff {
        \set Staff.instrumentName = "A"
        \new Voice = "Alto" { \dynamicUp \Alto }
      }
      \new Lyrics \lyricsto Alto \AltoLyrics
    >>
    \new StaffGroup <<
      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "org" "b" }
        \Organo
      }
    >>
    \new FiguredBass { \BassFigures }
  >>
}
