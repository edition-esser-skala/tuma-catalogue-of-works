\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key g \major \time 4/4 \tempoMarkup "[no tempo]"
    R1*3
    r2 r8 d'16( e) e( fis) fis( g)
    g4 r g8 f? e g
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key g \major \time 4/4 \tempoMarkup "[no tempo]"
    R1*3
    r2 r8 h'16( c) c( a) a( h)
    h4 d c8 d e g
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key g \major \time 4/4 \autoBeamOff \tempoMarkup "[no tempo]"
    R1*4
    d'4^\tutti d8 d c d e g
  }
}

SopranoLyrics = \lyricmode {
  Va -- num est vo -- bis an -- te
}

Alto = {
  \relative c' {
    \clef alto
    \key g \major \time 4/4 \autoBeamOff \tempoMarkup "[no tempo]"
    R1*4
    g'4^\tutti g8 g g f g g
  }
}

AltoLyrics = \lyricmode {
  Va -- num est vo -- bis an -- te
}

Tenore = {
  \relative c' {
    \clef tenor
    \key g \major \time 4/4 \autoBeamOff \tempoMarkup "[no tempo]"
    d8^\solo c16[ h] c8. c16 h8 h a d
    h a16 h g4 fis8 a d4
    h8 h e8. d16 c8 h16[ a] d8. c16
    h8 a16 g a4 g r
    d'^\tutti d8 d e f e d
  }
}

TenoreLyrics = \lyricmode {
  Ni -- si Do -- mi -- nus ae -- di -- fi --
  ca -- ve -- rit do -- mum, in va --
  num la -- bo -- ra -- ve -- runt qui ae --
  di -- fi -- cant e -- am.
  Va -- num est vo -- bis an -- te
}

Basso = {
  \relative c {
    \clef bass
    \key g \major \time 4/4 \autoBeamOff \tempoMarkup "[no tempo]"
    g8^\solo g' g fis g4 fis8 fis
    g e16 fis e8 a, d d d d
    g8. fis16 e4 a8 g fis[ e16 d]
    g8 e c[ d] g,4 r
    g'^\tutti g8 f e d c h
  }
}

BassoLyrics = \lyricmode {
  Ni -- si Do -- mi -- nus cu -- sto --
  di -- e -- rit ci -- vi -- ta -- tem, fru -- stra
  vi -- gi -- lat qui cu -- sto --
  _ dit e -- am.
  Va -- num est vo -- bis an -- te
}

Organo = {
  \relative c {
    \clef bass
    \key g \major \time 4/4 \tempoMarkup "[no tempo]"
    g8-\solo g'4 fis8 g4 fis
    g8 fis e a, d4 r8 d
    g4 e8 e a8. g16 fis8 d
    g e c d g,4 c8 d
    g,4-\tutti g'8 f e d c h
  }
}

BassFigures = \figuremode {
  r4 <2>8 <6>4. r4
  r8 <6> <7> <_+> r2
  r1
  r
  r2 r8 <_!>4.
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
        \set Staff.instrumentName = "S"
        \new Voice = "Soprano" { \dynamicUp \Soprano }
      }
      \new Lyrics \lyricsto Soprano \SopranoLyrics

      \new Staff {
        \set Staff.instrumentName = "A"
        \new Voice = "Alto" { \dynamicUp \Alto }
      }
      \new Lyrics \lyricsto Alto \AltoLyrics

      \new Staff {
        \set Staff.instrumentName = "T"
        \new Voice = "Tenore" { \dynamicUp \Tenore }
      }
      \new Lyrics \lyricsto Tenore \TenoreLyrics

      \new Staff {
        \set Staff.instrumentName = "B"
        \new Voice = "Basso" { \dynamicUp \Basso }
      }
      \new Lyrics \lyricsto Basso \BassoLyrics
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
