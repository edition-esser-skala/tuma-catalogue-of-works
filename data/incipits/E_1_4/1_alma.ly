\version "2.24.2"
\include "header.ly"

Cornetto = {
  \relative c' {
    \clef soprano
    \key g \minor \time 4/4 \tempoMarkup "Andante"
    d'4. d8 b es d c
    d g, c2 b8 a
    g a b4 a2
    g4 r8 d' d4 d8 h
    c c, r4 g'8. g16 a h c d
  }
}

TromboneI = {
  \relative c' {
    \clef alto
    \key g \minor \time 4/4 \tempoMarkup "Andante"
    r4 g' g g8 g
    f b a g a d, g4
    e8 fis g4 g fis
    g r8 g g4 g8 g
    g4 g8 g es es r g
  }
}

TromboneII = {
  \relative c' {
    \clef tenor
    \key g \minor \time 4/4 \tempoMarkup "Andante"
    R1*2
    r4 r8 g d'4 d8 a
    b b r b b4 h8 d
    es es r4 c,8 d16 es f g a h
  }
}

Fagotto = {
  \relative c {
    \clef bass
    \key g \minor \time 4/4 \tempoMarkup "Andante"
    R1*2
    r2 r4 r8 d
    g8. f32 es d16 c b a g8 g r g'
    c8. b32 as g16 f es d c8 c r4
  }
}

ViolinoI = {
  \relative c' {
    \clef treble
    \key g \minor \time 4/4 \tempoMarkup "Andante"
    d'4. d8 b es d c
    d g, c2 b8 a
    g a b4 a2
    g4 r8 d' d4 d8 h
    c c, r4 g'8. g16 a h c d
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key g \minor \time 4/4 \tempoMarkup "Andante"
    r4 g' g g8 g
    f b a g a d, g4
    e8 fis g4 g fis
    g r8 g g4 g8 g
    g4 g8 g es es r g
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key g \minor \time 4/4 \tempoMarkup "Andante" \autoBeamOff
    d'4.^\tutti d8 b es d c
    d g, c2 b8[ a]
    g[ a] b4 a2
    g4 r8 d' d4 d8 h
    c c, r4 g'8. g16 a[ h] c[ d]
  }
}

SopranoLyrics = \lyricmode {
  Al -- ma Re -- dem -- pto -- ris
  Ma -- ter, Re -- dem --
  pto -- ris Ma --
  ter, suc -- cur -- re ca --
  den -- ti, sur -- ge -- re qui
}

Alto = {
  \relative c' {
    \clef alto
    \key g \minor \time 4/4 \tempoMarkup "Andante" \autoBeamOff
    r4 g'^\tutti g g8 g
    f b a g a d, g4
    e8[ fis] g4 g fis
    g r8 g g4 g8 g
    g4 g8 g es es r g
  }
}

AltoLyrics = \lyricmode {
  Quae per -- vi -- a
  coe -- li por -- ta ma -- nes et
  stel -- la ma -- _
  ris, suc -- cur -- re, suc --
  cur -- re ca -- den -- ti, "suc -"
}

Tenore = {
  \relative c' {
    \clef tenor
    \key g \minor \time 4/4 \tempoMarkup "Andante" \autoBeamOff
    R1*2
    r4 r8 g^\tutti d'4 d8 a
    b b r b b4 h8 d
    es es r4 c,8 d16[ es] f[ g] a[ h]
  }
}

TenoreLyrics = \lyricmode {
  Suc -- cur -- re ca --
  den -- ti, suc -- cur -- re, suc --
  cur -- re, sur -- ge -- re qui
}

Basso = {
  \relative c {
    \clef bass
    \key g \minor \time 4/4 \tempoMarkup "Andante" \autoBeamOff
    R1*2
    r2 r4 r8 d^\tutti
    g8.[ f32 es] d16[ c b a] g8 g r g'
    c8.[ b32 as] g16[ f es d] c8 c r4
  }
}

BassoLyrics = \lyricmode {
  Ca --
  den -- _ _ ti, ca --
  den -- _ _ ti,
}

Organo = {
  \relative c {
    \clef soprano
    \key g \minor \time 4/4 \tempoMarkup "Andante"
    << {
      d''4. d8 b es d c
      d g, c2 b8 a
      g[ a b]
    } \\ {
      r4-\tutti g g g8 g
      f b a g a d, g4
      e8[ fis g]
    } >> \clef tenor g, d'4 d8 \noBeam \clef bass d,
    g8. f32 es d16 c b a g8 g r g'
    c8. b32 as g16 f es d c8 c r4
  }
}

BassFigures = \figuremode {
  r1
  r
  r2 <5 4>4 <\t _+>
  r2.. <_!>8
  r1
}

\score {
  <<
    \new StaffGroup <<
      \new Staff \with { \smallStaffDistance } {
        \set Staff.instrumentName = "cnto"
        \Cornetto
      }
      \new GrandStaff \with { \smallGroupDistance } <<
        \set GrandStaff.instrumentName = "trb"
        \new Staff {
          \set Staff.instrumentName = "1"
          \TromboneI
        }
        \new Staff {
          \set Staff.instrumentName = "2"
          \TromboneII
        }
      >>
      \new Staff {
        \set Staff.instrumentName = "fag"
        \Fagotto
      }
    >>
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
