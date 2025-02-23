\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key f \major \time 4/4 \tempoMarkup "Adagio"
    a''2 g4. g8
    a2 c,4 c8 c
    c4 h8 c d4 c
    c h c r
    \tempoMarkup "Allegro" r8 a' g16 f e d c b a8 f'16 g a8
    g c, r c' a a f4~
    f8 e d4 c8 g'( a) fis
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key f \major \time 4/4 \tempoMarkup "Adagio"
    c'2 b4. b8
    a2 a4 a8 a
    f2 f4 e
    f2 e
    \tempoMarkup "Allegro" r8 a c d16 e f e f8 c b16 a
    g8 g c c r4 d8 d
    h c4 \hA h8 c4 r8 a
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key f \major \time 4/4 \tempoMarkup "Adagio" \autoBeamOff
    c'2^\tutti b4. b8
    a2 c4 c8 c
    c4 h8[ c] d4 c~
    c h8. h16 c2
    \tempoMarkup "Allegro" r8 a c d16[ e] f[ e] f8 c b16 a
    g8 g16 g c8 c c c d d
    h c c[ h] c4 r
  }
}

SopranoLyrics = \lyricmode {
  Ma -- gni -- fi --
  cat a -- ni -- ma
  me -- a Do -- _
  _ mi -- num,
  et ex -- ul -- ta -- vit spi -- ri -- tus
  me -- us in De -- o, De -- o sa -- lu --
  ta -- ri me -- o.
}

Alto = {
  \relative c' {
    \clef alto
    \key f \major \time 4/4 \tempoMarkup "Adagio" \autoBeamOff
    f2^\tutti g4. g8
    f2 a4 a8 a
    f4 f f e
    f4. f8 e2
    \tempoMarkup "Allegro" r8 f g g a a f f16 f
    e8 e r e f f f f
    f e d4 e r
  }
}

AltoLyrics = \lyricmode {
  Ma -- gni -- fi --
  cat a -- ni -- ma
  me -- a Do -- _
  _ mi -- num,
  et ex -- ul -- ta -- vit spi -- ri -- tus
  me -- us in De -- o sa -- lu --
  ta -- ri me -- o.
}

Tenore = {
  \relative c' {
    \clef tenor
    \key f \major \time 4/4 \tempoMarkup "Adagio" \autoBeamOff
    a2^\tutti d4 c8. c16
    c2 r
    a4 d8 d g,4 g
    f4. f8 g2
    \tempoMarkup "Allegro" r8 c c c c c c c16 c
    c8 c r g a a a a
    g g g4 g r
  }
}

TenoreLyrics = \lyricmode {
  Ma -- gni -- _ fi --
  cat
  a -- ni -- ma me -- a
  Do -- mi -- num,
  et ex -- ul -- ta -- vit spi -- ri -- tus
  me -- us in De -- o sa -- lu --
  ta -- ri me -- o.
}

Basso = {
  \relative c {
    \clef bass
    \key f \major \time 4/4 \tempoMarkup "Adagio" \autoBeamOff
    f2^\tutti f4( e8.) e16
    f2 r
    d4 d8 d h4 c
    d4. d8 c2
    \tempoMarkup "Allegro" r8 f e16[ d] c[ b] a[ g] f8 a' g16 f
    c'8 c, r c f f d f
    g c, g4 c r
  }
}

BassoLyrics = \lyricmode {
  Ma -- gni -- fi --
  cat
  a -- ni -- ma me -- a
  Do -- mi -- num,
  et ex -- ul -- ta -- vit spi -- ri -- tus
  me -- us in De -- o sa -- lu --
  ta -- ri me -- o.
}

Organo = {
  \relative c {
    \clef bass
    \key f \major \time 4/4 \tempoMarkup "Adagio"
    f2 f4 e
    f2 r
    d h4 c
    d2 c
    \tempoMarkup "Allegro" r8 f e16 d c b a g f8 a' g16 f
    c'8 c, r c f4 d8 f
    g c, g4 c c'8-\solo d
  }
}

BassFigures = \figuremode {
  r2 <4 2>4 <6>
  r1
  <7>4 <6!>8 <7> <6 5>2
  <7>4 <6!>2.
  r1
  r2.. <6>8
  <_!>4 <4>8 <_!>4. <6>8 <_+>
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
