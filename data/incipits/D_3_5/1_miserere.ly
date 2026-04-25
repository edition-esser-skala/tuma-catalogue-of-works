\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key c \dorian \time 4/4 \tempoMarkup "Adagio"
    es'2\f c
    f8([\p as)] d,[( f)] g,,4 d''\f
    des2 b8([\p des)] g,([ b)]
    e,4 cis'2\f cis4
    d!8 a d2 c4
    c2 h
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key c \dorian \time 4/4 \tempoMarkup "Adagio"
    g'2~\f g4 f
    f'8([\p as)] d,([ f)] g,,4 g'\f
    e2 b'8([\p des)] g,([ b)]
    e,4 e2\f a!4
    a2 g~
    g4 fis g2
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key c \dorian \time 4/4 \tempoMarkup "Adagio" \autoBeamOff
    es'4.^\tutti es8 c4 c
    r2 r8 d4 d8
    cis4 cis r2
    r4 cis2 cis4
    d d d c
    c2 h
  }
}

SopranoLyrics = \lyricmode {
  Mi -- se -- re -- re,
  mi -- se --
  re -- re,
  mi -- se --
  re -- re me -- i,
  De -- us,
}

Alto = {
  \relative c' {
    \clef alto
    \key c \dorian \time 4/4 \tempoMarkup "Adagio" \autoBeamOff
    g'4.^\tutti g8 g4 f
    r2 r8 g4 g8
    g4 g r2
    r4 a!2 a4
    a a g g
    g fis g2
  }
}

AltoLyrics = \lyricmode {
  Mi -- se -- re -- re,
  mi -- se --
  re -- re,
  mi -- se --
  re -- re me -- i,
  De -- _ us,
}

Tenore = {
  \relative c' {
    \clef tenor
    \key c \dorian \time 4/4 \tempoMarkup "Adagio" \autoBeamOff
    c4.^\tutti c8 c4 c
    r2 r8 f4 f8
    e4 e r2
    r4 e2 e4
    d d g, es'
    es d8[ c] d2
  }
}

TenoreLyrics = \lyricmode {
  Mi -- se -- re -- re,
  mi -- se --
  re -- re,
  mi -- se --
  re -- re me -- i,
  De -- _ us,
}

Basso = {
  \relative c {
    \clef bass
    \key c \dorian \time 4/4 \tempoMarkup "Adagio" \autoBeamOff
    c4.^\tutti c8 as'4 as
    r2 r8 h,4 h8
    b4 b r2
    r4 a!2 g4
    f d' es!4. es8
    as,2 g
  }
}

BassoLyrics = \lyricmode {
  Mi -- se -- re -- re,
  mi -- se --
  re -- re,
  mi -- se --
  re -- re me -- i,
  De -- us,
}

Organo = {
  \relative c {
    \clef bass
    \key c \dorian \time 4/4 \tempoMarkup "Adagio"
    c2-\tutti as'
    r r8 h,4 h8
    b2 r
    r4 a!2 g4
    f d' es!2
    as, g
  }
}

BassFigures = \figuremode {
  r2 <7>4 <6>
  r2 r8 <6 5>4.
  <4! _->1
  r4 <5! _+>2 <\t \t>4
  <6>2 <7>4 <6>
  <7> <6\\> <_!>2
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
        \set Staff.instrumentName = \markup \center-column { "A" "trb 1" }
        \new Voice = "Alto" { \dynamicUp \Alto }
      }
      \new Lyrics \lyricsto Alto \AltoLyrics

      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "T" "trb 2" }
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
