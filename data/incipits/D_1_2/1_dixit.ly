\version "2.24.2"
\include "header.ly"

ClarinoI = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4 \tempoMarkup "Allegro"
    g''8 g \pa g a16 h c8 c, e f16 g \pd
    a8 f f e d4 c
    R1*3
  }
}

ClarinoII = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4 \tempoMarkup "Allegro"
    e'8 e d4 c8. d16 e8 e
    c d d c g g16 g e4
    R1*3
  }
}

Timpani = {
  \relative c {
    \clef bass
    \key c \major \time 4/4 \tempoMarkup "Allegro"
    c4 g r c
    r g8 c g8. g16 c4
    R1*3
  }
}

ViolinoI = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4 \tempoMarkup "Allegro"
    g''8 g g a16 h c4 e,8 f16 g
    a4 d,8 c d4 e8 a
    \grace a gis8. f16 \grace f8 e8. d16 \tuplet 3/2 8 { c h a } r8 r4
    R1
    r2 r4 r8 e'
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4 \tempoMarkup "Allegro"
    c'8 c d4 c8 h16 a c4~
    c8. d16 h8 c4 h8 c a'
    \grace a gis8. f16 \grace f8 e8. d16 \tuplet 3/2 8 { c h a } r8 r4
    R1
    r2 r4 r8 e'
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key c \major \time 4/4 \tempoMarkup "Allegro" \autoBeamOff
    c'8^\tutti c d c16 h c8 h16 a c8 c
    c c16 d h8 c c[ h] c4
    R1*3
  }
}

SopranoLyrics = \lyricmode {
  Di -- xit Do -- mi -- nus Do -- mi -- no me -- o:
  Se -- de a dex -- tris me -- is,
}

Alto = {
  \relative c' {
    \clef alto
    \key c \major \time 4/4 \tempoMarkup "Allegro" \autoBeamOff
    g'8^\tutti g g g16 g e8 e16 f g8 g
    a a16 a g8 g g4 e
    r e8^\solo e e a, e'8. a16
    f8 e e[ d] e e fis gis
    a2~ a8 h16 fis gis4\trill
  }
}

AltoLyrics = \lyricmode {
  Di -- xit Do -- mi -- nus Do -- mi -- no me -- o:
  Se -- de a dex -- tris me -- is,
  do -- nec po -- nam in -- i --
  mi -- cos tu -- os sca -- bel -- lum
  pe -- dum tu -- "o -"
}

Tenore = {
  \relative c' {
    \clef tenor
    \key c \major \time 4/4 \tempoMarkup "Allegro" \autoBeamOff
    e8^\tutti e d d16 d c8 c16 d e8 e
    f f16 f d8 e d4 c
    r2 c4.^\solo c16 e
    d8 c16[ h] a4 gis8 gis a h
    c4 d8[ e] a, d h4
  }
}

TenoreLyrics = \lyricmode {
  Di -- xit Do -- mi -- nus Do -- mi -- no me -- o:
  Se -- de a dex -- tris me -- is,
  vir -- gam vir --
  tu -- tis tu -- ae e -- mit -- tet
  Do -- mi -- nus ex "Sy -"
}

Basso = {
  \relative c {
    \clef bass
    \key c \major \time 4/4 \tempoMarkup "Allegro" \autoBeamOff
    c'8^\tutti c h a16 g a8 g16 f e[ d] c8
    f e16 d g8 c, g4 c
    r2 r4 c8^\solo a
    d e16 e f8. f16 e8 e d d
    c[ a h c] d d e4
  }
}

BassoLyrics = \lyricmode {
  Di -- xit Do -- mi -- nus Do -- mi -- no me -- o:
  Se -- de a dex -- tris me -- is,
  do -- mi --
  na -- re in me -- di -- o in -- i -- mi --
  co -- rum tu -- "o -"
}

Organo = {
  \relative c {
    \clef bass
    \key c \major \time 4/4 \tempoMarkup "Allegro"
    c8-\tutti c' h a16 g a8 g16 f e8 c
    f d g c, g' g, c c-\solo
    h a gis e a4 c8 a
    d e f4 e d
    c8 a h c d4 e8 e,
  }
}

BassFigures = \figuremode {
  r1
  r2. <5>8 <6>
  <6\\>4 <6>8 <7> r2
  r8 <_+> <7> <6> <_+>4 <_+ 5>8 <4\+ 6>
  <6>2 <5>8 <6> <_+>4
}

\score {
  <<
    \new StaffGroup <<
      \new Staff <<
        \set Staff.instrumentName = \markup \center-column { \transposedNameShort "clno" "C" "" "1, 2" }
        \partCombine #'(0 . 10) \ClarinoI \ClarinoII
      >>
    >>
    \new Staff {
      \set Staff.instrumentName = \transposedTimpShort "C" "" "G" ""
      \Timpani
    }
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
