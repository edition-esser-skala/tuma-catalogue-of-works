\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4 \tempoMarkup "Andante"
    R1*2
    g''16 f e d c h a g a g f e d c h a
    h g' e c d8.\trill c32 d c8 e' r e\p
    r e f( e) e( d) e-! e-!
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4 \tempoMarkup "Andante"
    R1*2
    g''16 f e d c h a g a g f e d c h a
    h g' e c d8.\trill c32 d c8 c' r c\p
    r c d( c) c( h) c-! c-!
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key c \major \time 4/4 \tempoMarkup "Andante" \autoBeamOff
    r8 g'^\solo c e a, h16 c d8 c
    h c a d h c16[ d] \grace c8 h8. h16
    c4 r r2
    R1*2
  }
}

SopranoLyrics = \lyricmode {
  Lau -- da -- te pu -- e -- ri Do -- mi --
  num: Lau -- da -- te no -- men Do -- mi --
  ni.
}

Alto = {
  \relative c' {
    \clef alto
    \key c \major \time 4/4 \tempoMarkup "Andante" \autoBeamOff
    R1
    r8 g'^\solo g f f e16[ f] e8[ d16]\trill c
    c4 r r2
    R1*2
  }
}

AltoLyrics = \lyricmode {
  Lau -- da -- te no -- men Do -- mi --
  ni.
}

Tenore = {
  \relative c' {
    \clef tenor
    \key c \major \time 4/4 \tempoMarkup "Andante" \autoBeamOff
    R1*5
  }
}

TenoreLyrics = \lyricmode {
  %tacet
}

Basso = {
  \relative c {
    \clef bass
    \key c \major \time 4/4 \tempoMarkup "Andante" \autoBeamOff
    R1*3
    r2 r8 c'^\solo c c
    a a16 a f8 fis g g e c'
  }
}

BassoLyrics = \lyricmode {
  Sit no -- men
  Do -- mi -- ni be -- ne -- di -- ctum ex hoc
}

Organo = {
  \relative c {
    \clef bass
    \key c \major \time 4/4 \tempoMarkup "Andante"
    c'8-\solo h a g f e d e16 f
    g8 e f d16 f g8 c, g' g,
    c4 r8 e f f, r f'
    g c, f g c,4 r8 c'
    r a f fis r g e c
  }
}

BassFigures = \figuremode {
  r4. <6>2 q8
  r8 r <9> r <7>4 <6 4>8 <5 3>
  r1
  r4 <6 5>2.
  r4 <8 6>8 <7 5>4. r4
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
